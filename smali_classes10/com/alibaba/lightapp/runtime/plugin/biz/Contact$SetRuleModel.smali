.class Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetRuleModel"
.end annotation


# instance fields
.field agentId:J

.field corpId:Ljava/lang/String;

.field ruleId:J

.field ruleName:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 1668
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
