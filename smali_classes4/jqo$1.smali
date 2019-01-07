.class final Ljqo$1;
.super Ljava/lang/Object;
.source "PageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljqo;->d()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentTransaction;

.field final synthetic b:Landroid/support/v4/app/Fragment;

.field final synthetic c:Ljqo;


# direct methods
.method constructor <init>(Ljqo;Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Ljqo;

    .prologue
    .line 109
    iput-object p1, p0, Ljqo$1;->c:Ljqo;

    iput-object p2, p0, Ljqo$1;->a:Landroid/support/v4/app/FragmentTransaction;

    iput-object p3, p0, Ljqo$1;->b:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Ljqo$1;->a:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 113
    iget-object v0, p0, Ljqo$1;->c:Ljqo;

    iget-object v0, v0, Ljqo;->e:Ljqp;

    invoke-virtual {v0}, Ljqp;->c()Ljqp$b;

    .line 114
    iget-object v0, p0, Ljqo$1;->c:Ljqo;

    iget-object v1, p0, Ljqo$1;->b:Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Ljqo;->d:Landroid/support/v4/app/Fragment;

    .line 115
    return-void
.end method
