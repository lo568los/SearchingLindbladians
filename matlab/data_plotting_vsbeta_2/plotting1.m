%% plotting nicely... NL+1

%X1=getfield(load('./data_1_1.mat'),'betalist');
Y1=getfield(load('./thermal_data_new1_th.mat'),'cvx_optval');

%X2=getfield(load('./data_1_2.mat'),'betalist');
Y2=getfield(load('./thermal_data_new2.mat'),'cvx_optval');

%X3=getfield(load('./data_1_3.mat'),'betalist');
Y3=getfield(load('./thermal_data_new3.mat'),'cvx_optval');

%X4=getfield(load('./data_1_4.mat'),'betalist');
Y4=getfield(load('./thermal_data_new4.mat'),'cvx_optval');

Y5=getfield(load('./thermal_data_new5.mat'),'cvx_optval');
Y6=getfield(load('./thermal_data_new6.mat'),'cvx_optval');
Y7=getfield(load('./thermal_data_new7.mat'),'cvx_optval');
Y8=getfield(load('./thermal_data_new8.mat'),'cvx_optval');
Y9=getfield(load('./thermal_data_new9.mat'),'cvx_optval');
Y10=getfield(load('./thermal_data_new10.mat'),'cvx_optval');
%% make sure all these elists are the same !!! Makes comparison easier!!

Y_1 = [Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y10];
X_1 = [1.0,1.2,1.5,1.7,2.0,2.2,2.5,2.7,3.0,3.5];


loglog(X_1,Y_1,'DisplayName',"$\beta_L = 1$",'LineWidth',3,'Marker','*','MarkerSize',15,'LineStyle','-');
hold on;
box on;
grid on;
%loglog(X2,Y2,'DisplayName',"$N_M = 2$",'LineWidth',3,'Marker','o','MarkerSize',15,'LineStyle','-');
%loglog(X3,Y3,'DisplayName',"$N_M = 3$",'LineWidth',3,'Marker','x','MarkerSize',15,'LineStyle','-');
%loglog(X4,Y4,'DisplayName',"$N_M = 4$",'LineWidth',3,'Marker','+','MarkerSize',15,'LineStyle','-');
xlabel("$\beta_R$",'Interpreter','latex');
ylabel("$\tau_{opt}$",'Interpreter','latex')
fontsize(gca,45,"pixels")
legend('location','northwest','Interpreter','latex')
yline(1e-6,'--','Linewidth',3,'HandleVisibility','off');

%set(gca,'Ytick',logspace(-12,-4,8));
hold off;

savefig('plot1.fig')