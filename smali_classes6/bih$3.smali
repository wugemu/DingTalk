.class public final Lbih$3;
.super Ljava/lang/Object;
.source "CompleteMemberViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbih;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lchg;

.field final synthetic b:Lbih;


# direct methods
.method public constructor <init>(Lbih;Lchg;)V
    .locals 0
    .param p1, "this$0"    # Lbih;

    .prologue
    .line 213
    iput-object p1, p0, Lbih$3;->b:Lbih;

    iput-object p2, p0, Lbih$3;->a:Lchg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 216
    iget-object v0, p0, Lbih$3;->b:Lbih;

    .line 1031
    iget-object v0, v0, Lbih;->k:Landroid/app/Activity;

    .line 216
    iget-object v1, p0, Lbih$3;->a:Lchg;

    iget-wide v2, v1, Lchg;->e:J

    invoke-static {v0, v2, v3}, Lbjv;->a(Landroid/app/Activity;J)V

    .line 217
    return-void
.end method
