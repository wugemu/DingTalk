.class final Lacp$29$1;
.super Ljava/lang/Object;
.source "MailDialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacp$29;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacp$29;


# direct methods
.method constructor <init>(Lacp$29;)V
    .locals 0
    .param p1, "this$1"    # Lacp$29;

    .prologue
    .line 300
    iput-object p1, p0, Lacp$29$1;->a:Lacp$29;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 303
    iget-object v0, p0, Lacp$29$1;->a:Lacp$29;

    iget-object v0, v0, Lacp$29;->b:Lacp;

    iget-object v1, p0, Lacp$29$1;->a:Lacp$29;

    iget-object v1, v1, Lacp$29;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1}, Lacp;->a(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 304
    return-void
.end method
