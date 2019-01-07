.class final Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService$1;
.super Ljava/lang/Object;
.source "DDBabysitterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService$1;->a:Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService$1;->a:Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;

    const-class v2, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v0, "resumeIntent":Landroid/content/Intent;
    const-string/jumbo v1, "resume_service_command"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService$1;->a:Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;->a(Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;Landroid/content/Intent;)V

    .line 55
    return-void
.end method
