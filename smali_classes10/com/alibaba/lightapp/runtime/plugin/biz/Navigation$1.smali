.class Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$1;
.super Ljava/lang/Object;
.source "Navigation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->onHomeClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 581
    return-void
.end method
