.class final Lcmq$4;
.super Ljava/lang/Object;
.source "CustomThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcmq$a;

.field final synthetic b:J

.field final synthetic c:Lcmq;


# direct methods
.method constructor <init>(Lcmq;Lcmq$a;J)V
    .locals 1
    .param p1, "this$0"    # Lcmq;

    .prologue
    .line 411
    iput-object p1, p0, Lcmq$4;->c:Lcmq;

    iput-object p2, p0, Lcmq$4;->a:Lcmq$a;

    iput-wide p3, p0, Lcmq$4;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 414
    iget-object v0, p0, Lcmq$4;->a:Lcmq$a;

    iget-wide v2, p0, Lcmq$4;->b:J

    invoke-interface {v0, v2, v3}, Lcmq$a;->a(J)V

    .line 415
    return-void
.end method
