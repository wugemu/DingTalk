.class final Lcmq$3;
.super Ljava/lang/Object;
.source "CustomThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmq;->e(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcmq;


# direct methods
.method constructor <init>(Lcmq;J)V
    .locals 0
    .param p1, "this$0"    # Lcmq;

    .prologue
    .line 368
    iput-object p1, p0, Lcmq$3;->b:Lcmq;

    iput-wide p2, p0, Lcmq$3;->a:J

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
    .line 371
    iget-object v0, p0, Lcmq$3;->b:Lcmq;

    iget-wide v2, p0, Lcmq$3;->a:J

    invoke-virtual {v0, v2, v3}, Lcmq;->d(J)V

    .line 372
    return-void
.end method
