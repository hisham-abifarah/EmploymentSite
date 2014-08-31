package com.employmentapp.service;

import com.employmentapp.dao.StateDB;
import com.employmentapp.dto.StateBean;
import java.io.PrintStream;

public class StateService
{
  public StateBean getitabcdefg()
  {
    System.out.println("Sate Service Starts");
    StateBean sb = new StateDB().getState();
    System.out.println("Sate Service Ends");
    return sb;
  }
}
