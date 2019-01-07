.class final Latp$1;
.super Ljava/lang/Object;
.source "RpcFrequencyController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latp;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Latp;


# direct methods
.method constructor <init>(Latp;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Latp;

    .prologue
    .line 178
    iput-object p1, p0, Latp$1;->b:Latp;

    iput-object p2, p0, Latp$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 181
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    .line 182
    .local v0, "curTimeMillis":J
    iget-object v3, p0, Latp$1;->b:Latp;

    iget-object v4, p0, Latp$1;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Latp;->a(Latp;Ljava/lang/String;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 183
    iget-object v3, p0, Latp$1;->b:Latp;

    iget-object v4, p0, Latp$1;->a:Ljava/lang/String;

    invoke-static {v3, v4, v0, v1}, Latp;->a(Latp;Ljava/lang/String;J)V

    .line 184
    iget-object v3, p0, Latp$1;->b:Latp;

    iget-object v4, p0, Latp$1;->a:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Latp;->a(Latp;Ljava/lang/String;I)V

    .line 194
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v3, p0, Latp$1;->b:Latp;

    iget-object v4, p0, Latp$1;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Latp;->b(Latp;Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 187
    .local v2, "newCallTimesInOneMinute":I
    const/4 v3, 0x7

    if-lt v2, v3, :cond_1

    .line 188
    iget-object v3, p0, Latp$1;->b:Latp;

    iget-object v4, p0, Latp$1;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Latp;->c(Latp;Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Latp$1;->b:Latp;

    iget-object v4, p0, Latp$1;->a:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Latp;->a(Latp;Ljava/lang/String;I)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v3, p0, Latp$1;->b:Latp;

    iget-object v4, p0, Latp$1;->a:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Latp;->a(Latp;Ljava/lang/String;I)V

    goto :goto_0
.end method
