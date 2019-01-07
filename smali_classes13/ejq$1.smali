.class final Lejq$1;
.super Ljava/lang/Object;
.source "HomeBurnChatEnterManger.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lejq;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lejq;


# direct methods
.method constructor <init>(Lejq;)V
    .locals 0
    .param p1, "this$0"    # Lejq;

    .prologue
    .line 65
    iput-object p1, p0, Lejq$1;->a:Lejq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    invoke-static {}, Lekw;->b()Lekw;

    move-result-object v0

    new-instance v1, Lejq$1$1;

    invoke-direct {v1, p0}, Lejq$1$1;-><init>(Lejq$1;)V

    invoke-virtual {v0, v1}, Lekw;->a(Lcom/alibaba/wukong/Callback;)V

    .line 115
    return-void
.end method
