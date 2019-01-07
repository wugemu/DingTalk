.class public final Lcmq$2;
.super Ljava/lang/Object;
.source "CustomThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcmq;


# direct methods
.method public constructor <init>(Lcmq;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcmq;

    .prologue
    .line 323
    iput-object p1, p0, Lcmq$2;->d:Lcmq;

    iput-wide p2, p0, Lcmq$2;->a:J

    iput-object p4, p0, Lcmq$2;->b:Ljava/lang/String;

    iput-object p5, p0, Lcmq$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 326
    iget-object v0, p0, Lcmq$2;->d:Lcmq;

    iget-wide v2, p0, Lcmq$2;->a:J

    iget-object v1, p0, Lcmq$2;->b:Ljava/lang/String;

    iget-object v4, p0, Lcmq$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcmq;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method
