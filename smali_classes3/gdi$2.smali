.class final Lgdi$2;
.super Ljava/lang/Object;
.source "AclMemberViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgdi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgnu;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lgdi;


# direct methods
.method constructor <init>(Lgdi;Lgnu;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lgdi;

    .prologue
    .line 149
    iput-object p1, p0, Lgdi$2;->c:Lgdi;

    iput-object p2, p0, Lgdi$2;->a:Lgnu;

    iput-object p3, p0, Lgdi$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 152
    iget-object v0, p0, Lgdi$2;->c:Lgdi;

    iget-object v1, p0, Lgdi$2;->a:Lgnu;

    iget-object v2, p0, Lgdi$2;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lgdi;->a(Lgdi;Lgnu;Landroid/content/Context;)V

    .line 153
    return-void
.end method
