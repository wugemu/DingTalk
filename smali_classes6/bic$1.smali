.class public final Lbic$1;
.super Ljava/lang/Object;
.source "CheckInMemberViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lchg;

.field final synthetic b:Lbic;


# direct methods
.method public constructor <init>(Lbic;Lchg;)V
    .locals 0
    .param p1, "this$0"    # Lbic;

    .prologue
    .line 122
    iput-object p1, p0, Lbic$1;->b:Lbic;

    iput-object p2, p0, Lbic$1;->a:Lchg;

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
    .line 125
    iget-object v0, p0, Lbic$1;->b:Lbic;

    .line 1025
    iget-object v0, v0, Lbic;->g:Landroid/app/Activity;

    .line 125
    iget-object v1, p0, Lbic$1;->a:Lchg;

    iget-wide v2, v1, Lchg;->e:J

    invoke-static {v0, v2, v3}, Lbjv;->a(Landroid/app/Activity;J)V

    .line 126
    return-void
.end method
