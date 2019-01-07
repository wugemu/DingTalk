.class final Lbin$1;
.super Ljava/lang/Object;
.source "DingNotifyCenterViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbin;->a(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lbin;


# direct methods
.method constructor <init>(Lbin;J)V
    .locals 0
    .param p1, "this$0"    # Lbin;

    .prologue
    .line 72
    iput-object p1, p0, Lbin$1;->b:Lbin;

    iput-wide p2, p0, Lbin$1;->a:J

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
    .line 75
    iget-object v0, p0, Lbin$1;->b:Lbin;

    iget-object v0, v0, Lbin;->c:Landroid/app/Activity;

    iget-wide v2, p0, Lbin$1;->a:J

    invoke-static {v0, v2, v3}, Lbjv;->a(Landroid/app/Activity;J)V

    .line 76
    return-void
.end method
