.class final Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$5;
.super Ljava/lang/Object;
.source "NavBarDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;[Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 832
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$5;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$5;->a:[Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 834
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 835
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$5;->a:[Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    aget-object v0, v1, p2

    .line 836
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    if-eqz v0, :cond_0

    .line 837
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$5;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Ljava/lang/Object;Ljava/lang/Object;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Z

    .line 839
    :cond_0
    return-void
.end method
