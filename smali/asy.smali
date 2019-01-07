.class public Lasy;
.super Ljava/lang/Object;
.source "BaseInstance.java"


# instance fields
.field protected H:Ljava/lang/String;

.field protected I:Ljava/lang/String;

.field protected J:J

.field protected K:J

.field protected L:J

.field protected M:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lasy;->H:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lasy;->I:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 29
    iget-wide v0, p0, Lasy;->J:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 33
    iget-wide v0, p0, Lasy;->K:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 37
    iget-wide v0, p0, Lasy;->L:J

    return-wide v0
.end method

.method public final f()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 41
    iget-wide v0, p0, Lasy;->M:J

    return-wide v0
.end method
