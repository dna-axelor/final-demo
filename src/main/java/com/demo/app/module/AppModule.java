package com.demo.app.module;

import com.demo.abstrct.UserMethodAbstract;
import com.demo.guice.tester.GuiceTester;
import com.demo.guice.tester.UserImplementation;
import com.demo.guice.tester.UserService;
import com.google.inject.Binder;
import com.google.inject.Module;
import com.google.inject.Singleton;

@Singleton
public class AppModule implements Module {

	@Override
	public void configure(Binder binder) {
		binder.bind(GuiceTester.class);
		binder.bind(UserService.class);
		binder.bind(UserMethodAbstract.class).to(UserImplementation.class);
		
	}

}
