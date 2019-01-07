.class final Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$6;
.super Ljava/lang/Object;
.source "DingFloatingActionMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .prologue
    .line 657
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$6;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 660
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$6;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->b(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;Z)Z

    .line 661
    return-void
.end method
