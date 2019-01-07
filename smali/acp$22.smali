.class final Lacp$22;
.super Ljava/lang/Object;
.source "MailDialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lcma;

.field final synthetic c:Lacp;


# direct methods
.method constructor <init>(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lacp;

    .prologue
    .line 256
    iput-object p1, p0, Lacp$22;->c:Lacp;

    iput-object p2, p0, Lacp$22;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lacp$22;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 259
    iget-object v0, p0, Lacp$22;->c:Lacp;

    iget-object v1, p0, Lacp$22;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lacp$22;->b:Lcma;

    invoke-static {v0, v1, v2}, Lacp;->b(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;)V

    .line 260
    return-void
.end method
