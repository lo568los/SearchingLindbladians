e = 0.00;
ham_type=1;
NL1=1;


X1=getfield(load(sprintf('./diag_data_NL1=%d,e=%.2f,beta_r=10.0,g=0.0016,ham_type=%d.mat',NL1,e,ham_type)),'betal_list');
Y1=getfield(load(sprintf('./diag_data_NL1=%d,e=%.2f,beta_r=10.0,g=0.0016,ham_type=%d.mat',NL1,e,ham_type)),'optimal_value');

X2=getfield(load(sprintf('./diag_data_NL1=%d,e=%.2f,beta_r=5.0,g=0.0016,ham_type=%d.mat',NL1,e,ham_type)),'betal_list');
Y2=getfield(load(sprintf('./diag_data_NL1=%d,e=%.2f,beta_r=5.0,g=0.0016,ham_type=%d.mat',NL1,e,ham_type)),'optimal_value');

X3=getfield(load(sprintf('./diag_data_NL1=%d,e=%.2f,beta_r=1.0,g=0.0016,ham_type=%d.mat',NL1,e,ham_type)),'betal_list');
Y3=getfield(load(sprintf('./diag_data_NL1=%d,e=%.2f,beta_r=1.0,g=0.0016,ham_type=%d.mat',NL1,e,ham_type)),'optimal_value');

X4=getfield(load(sprintf('./diag_data_NL1=%d,e=%.2f,beta_r=0.5,g=0.0016,ham_type=%d.mat',NL1,e,ham_type)),'betal_list');
Y4=getfield(load(sprintf('./diag_data_NL1=%d,e=%.2f,beta_r=0.5,g=0.0016,ham_type=%d.mat',NL1,e,ham_type)),'optimal_value');

%% make sure all these elists are the same !!! Makes comparison easier!!




loglog(X1,Y1,'DisplayName',"$\beta_R = 10.0$",'LineWidth',7,'Marker','*','MarkerSize',15,'LineStyle','-');
hold on;
box on;
grid on;
loglog(X2,Y2,'DisplayName',"$\beta_R = 5.0$",'LineWidth',7,'Marker','o','MarkerSize',15,'LineStyle','-');
loglog(X3,Y3,'DisplayName',"$\beta_R = 1.0$",'LineWidth',7,'Marker','x','MarkerSize',15,'LineStyle','-');
loglog(X4,Y4,'DisplayName',"$\beta_R = 0.5$",'LineWidth',7,'Marker','+','MarkerSize',15,'LineStyle','-');
xlabel("$\beta_L$",'Interpreter','latex');
ylabel("$\tau_{opt}$",'Interpreter','latex')
fontsize(gca,45,"pixels")
legend('location','southwest','Interpreter','latex')
yline(1e-6,'--','Linewidth',3,'HandleVisibility','off');

set(gca,'Ytick',logspace(-13,-4,10));
hold off;

savefig(sprintf('diag_plot_NL1=%d,e=%.2f,ham_type=%d.fig',NL1,e,ham_type))