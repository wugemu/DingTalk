.class final Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$8;
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
    .line 186
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$8;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$8;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->b(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V

    .line 190
    return-void
.end method
