.class final Lcnr$a;
.super Ljava/lang/Object;
.source "ExposureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcnr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:J


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcnr$a;->a:Ljava/lang/String;

    .line 125
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lcnr$a;->b:J

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcnr$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    if-ne p1, p0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v1

    .line 140
    :cond_1
    instance-of v3, p1, Lcnr$a;

    if-nez v3, :cond_2

    move v1, v2

    .line 141
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 143
    check-cast v0, Lcnr$a;

    .line 144
    .local v0, "objKey":Lcnr$a;
    iget-object v3, p0, Lcnr$a;->a:Ljava/lang/String;

    iget-object v4, v0, Lcnr$a;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Lcnr$a;->b:J

    iget-wide v6, v0, Lcnr$a;->b:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 130
    iget-wide v2, p0, Lcnr$a;->b:J

    .line 1151
    const/16 v1, 0x20

    ushr-long v4, v2, v1

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 131
    .local v0, "hashCode":I
    iget-object v1, p0, Lcnr$a;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 132
    return v0

    .line 131
    :cond_0
    iget-object v1, p0, Lcnr$a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method
