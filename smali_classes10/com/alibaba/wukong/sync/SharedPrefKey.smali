.class public Lcom/alibaba/wukong/sync/SharedPrefKey;
.super Ljava/lang/Object;
.source "SharedPrefKey.java"


# instance fields
.field public SYNC_H_PTS:Ljava/lang/String;

.field public SYNC_PTS:Ljava/lang/String;

.field public SYNC_SEQ:Ljava/lang/String;

.field public SYNC_TIME:Ljava/lang/String;

.field public SYNC_TOOLONG2_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, "WK_SYNC_PTS_"

    iput-object v0, p0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_PTS:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "WK_SYNC_SEQ_"

    iput-object v0, p0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_SEQ:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "WK_SYNC_TIME_"

    iput-object v0, p0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_TIME:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, "WK_SYNC_H_PTS_"

    iput-object v0, p0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_H_PTS:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "WK_SYNC_TOOLONG2_TAG"

    iput-object v0, p0, Lcom/alibaba/wukong/sync/SharedPrefKey;->SYNC_TOOLONG2_TAG:Ljava/lang/String;

    .line 18
    return-void
.end method
