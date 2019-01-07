.class final Lfts$1;
.super Ljava/lang/Object;
.source "NameCardOrgsItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfsu;

.field final synthetic b:Lfts;


# direct methods
.method constructor <init>(Lfts;Lfsu;)V
    .locals 0
    .param p1, "this$0"    # Lfts;

    .prologue
    .line 54
    iput-object p1, p0, Lfts$1;->b:Lfts;

    iput-object p2, p0, Lfts$1;->a:Lfsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 57
    iget-object v0, p0, Lfts$1;->a:Lfsu;

    iget-object v0, v0, Lfsu;->c:Lftb$c;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lfts$1;->a:Lfsu;

    iget-object v0, v0, Lfsu;->c:Lftb$c;

    iget-object v1, p0, Lfts$1;->a:Lfsu;

    iget-object v1, v1, Lfsu;->b:Ljava/lang/String;

    iget-object v2, p0, Lfts$1;->a:Lfsu;

    iget-wide v2, v2, Lfsu;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lftb$c;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 60
    :cond_0
    return-void
.end method
