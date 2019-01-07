.class public Lcom/alibaba/wukong/im/base/IMDatabase;
.super Ljava/lang/Object;
.source "IMDatabase.java"


# static fields
.field protected static final SQLITE_MAX_VARIABLE_NUMBER:I = 0x3de


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getReadableDatabase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getWritableDatabase()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    .line 1293
    iget-boolean v2, v1, Liaq;->b:Z

    if-eqz v2, :cond_0

    .line 1295
    invoke-static {}, Lifz;->a()J

    move-result-wide v2

    .line 1296
    const-wide/32 v4, 0x500000

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 1297
    new-instance v0, Lcom/alibaba/wukong/im/IMStatus;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/IMStatus;-><init>()V

    .line 1298
    sget-object v1, Lcom/alibaba/wukong/im/IMStatus$StatusType;->STORAGE_FULL:Lcom/alibaba/wukong/im/IMStatus$StatusType;

    iput-object v1, v0, Lcom/alibaba/wukong/im/IMStatus;->mStatus:Lcom/alibaba/wukong/im/IMStatus$StatusType;

    .line 1299
    invoke-static {v0}, Liad;->a(Lcom/alibaba/wukong/im/IMStatus;)V

    .line 1300
    const-string/jumbo v0, "[TAG] Disk space"

    const-string/jumbo v1, "[BASE] space full"

    .line 2022
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const/4 v0, 0x1

    .line 18
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 19
    const/4 v0, 0x0

    .line 21
    :goto_1
    return-object v0

    .line 1302
    :cond_1
    const-wide/32 v4, 0x3200000

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1303
    iput-boolean v0, v1, Liaq;->b:Z

    goto :goto_0

    .line 21
    :cond_2
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
