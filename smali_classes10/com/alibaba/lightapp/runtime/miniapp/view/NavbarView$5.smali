.class final Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$5;
.super Ljava/lang/Object;
.source "NavbarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$5;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$5;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;Landroid/view/View;)V

    .line 170
    return-void
.end method
