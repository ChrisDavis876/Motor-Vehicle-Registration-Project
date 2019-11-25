﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Motor_Vehicle_Registration.ServiceReference1 {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceReference1.Insurance_Check_WSSoap")]
    public interface Insurance_Check_WSSoap {
        
        // CODEGEN: Generating message contract since element name regNum from namespace http://tempuri.org/ is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Check_Insurance", ReplyAction="*")]
        Motor_Vehicle_Registration.ServiceReference1.Check_InsuranceResponse Check_Insurance(Motor_Vehicle_Registration.ServiceReference1.Check_InsuranceRequest request);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Check_Insurance", ReplyAction="*")]
        System.Threading.Tasks.Task<Motor_Vehicle_Registration.ServiceReference1.Check_InsuranceResponse> Check_InsuranceAsync(Motor_Vehicle_Registration.ServiceReference1.Check_InsuranceRequest request);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class Check_InsuranceRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="Check_Insurance", Namespace="http://tempuri.org/", Order=0)]
        public Motor_Vehicle_Registration.ServiceReference1.Check_InsuranceRequestBody Body;
        
        public Check_InsuranceRequest() {
        }
        
        public Check_InsuranceRequest(Motor_Vehicle_Registration.ServiceReference1.Check_InsuranceRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class Check_InsuranceRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string regNum;
        
        public Check_InsuranceRequestBody() {
        }
        
        public Check_InsuranceRequestBody(string regNum) {
            this.regNum = regNum;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class Check_InsuranceResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="Check_InsuranceResponse", Namespace="http://tempuri.org/", Order=0)]
        public Motor_Vehicle_Registration.ServiceReference1.Check_InsuranceResponseBody Body;
        
        public Check_InsuranceResponse() {
        }
        
        public Check_InsuranceResponse(Motor_Vehicle_Registration.ServiceReference1.Check_InsuranceResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class Check_InsuranceResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string Check_InsuranceResult;
        
        public Check_InsuranceResponseBody() {
        }
        
        public Check_InsuranceResponseBody(string Check_InsuranceResult) {
            this.Check_InsuranceResult = Check_InsuranceResult;
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface Insurance_Check_WSSoapChannel : Motor_Vehicle_Registration.ServiceReference1.Insurance_Check_WSSoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class Insurance_Check_WSSoapClient : System.ServiceModel.ClientBase<Motor_Vehicle_Registration.ServiceReference1.Insurance_Check_WSSoap>, Motor_Vehicle_Registration.ServiceReference1.Insurance_Check_WSSoap {
        
        public Insurance_Check_WSSoapClient() {
        }
        
        public Insurance_Check_WSSoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public Insurance_Check_WSSoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Insurance_Check_WSSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Insurance_Check_WSSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        Motor_Vehicle_Registration.ServiceReference1.Check_InsuranceResponse Motor_Vehicle_Registration.ServiceReference1.Insurance_Check_WSSoap.Check_Insurance(Motor_Vehicle_Registration.ServiceReference1.Check_InsuranceRequest request) {
            return base.Channel.Check_Insurance(request);
        }
        
        public string Check_Insurance(string regNum) {
            Motor_Vehicle_Registration.ServiceReference1.Check_InsuranceRequest inValue = new Motor_Vehicle_Registration.ServiceReference1.Check_InsuranceRequest();
            inValue.Body = new Motor_Vehicle_Registration.ServiceReference1.Check_InsuranceRequestBody();
            inValue.Body.regNum = regNum;
            Motor_Vehicle_Registration.ServiceReference1.Check_InsuranceResponse retVal = ((Motor_Vehicle_Registration.ServiceReference1.Insurance_Check_WSSoap)(this)).Check_Insurance(inValue);
            return retVal.Body.Check_InsuranceResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        System.Threading.Tasks.Task<Motor_Vehicle_Registration.ServiceReference1.Check_InsuranceResponse> Motor_Vehicle_Registration.ServiceReference1.Insurance_Check_WSSoap.Check_InsuranceAsync(Motor_Vehicle_Registration.ServiceReference1.Check_InsuranceRequest request) {
            return base.Channel.Check_InsuranceAsync(request);
        }
        
        public System.Threading.Tasks.Task<Motor_Vehicle_Registration.ServiceReference1.Check_InsuranceResponse> Check_InsuranceAsync(string regNum) {
            Motor_Vehicle_Registration.ServiceReference1.Check_InsuranceRequest inValue = new Motor_Vehicle_Registration.ServiceReference1.Check_InsuranceRequest();
            inValue.Body = new Motor_Vehicle_Registration.ServiceReference1.Check_InsuranceRequestBody();
            inValue.Body.regNum = regNum;
            return ((Motor_Vehicle_Registration.ServiceReference1.Insurance_Check_WSSoap)(this)).Check_InsuranceAsync(inValue);
        }
    }
}
