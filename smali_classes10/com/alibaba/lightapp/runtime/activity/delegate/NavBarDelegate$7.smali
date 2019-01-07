.class final Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$7;
.super Ljava/lang/Object;
.source "NavBarDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$7;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    iput p2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$7;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$7;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$7;->a:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1149
    :cond_0
    return-void
.end method
