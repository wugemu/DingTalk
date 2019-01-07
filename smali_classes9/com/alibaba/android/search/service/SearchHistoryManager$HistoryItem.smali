.class public Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;
.super Ljava/lang/Object;
.source "SearchHistoryManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/service/SearchHistoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryItem"
.end annotation


# instance fields
.field public cid:Ljava/lang/String;

.field public keyword:Ljava/lang/String;

.field public model:Lcom/alibaba/android/search/model/BaseModel;

.field public timestamp:J

.field public userIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;


# direct methods
.method public constructor <init>(JLcom/alibaba/android/search/model/BaseModel;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "model"    # Lcom/alibaba/android/search/model/BaseModel;

    .prologue
    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iput-wide p1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->timestamp:J

    .line 701
    iput-object p3, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    .line 702
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/search/model/BaseModel;)V
    .locals 2
    .param p1, "model"    # Lcom/alibaba/android/search/model/BaseModel;

    .prologue
    .line 696
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;-><init>(JLcom/alibaba/android/search/model/BaseModel;)V

    .line 697
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V
    .locals 2
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "userIntimacyPushObject"    # Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .prologue
    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-object p1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->keyword:Ljava/lang/String;

    .line 712
    iput-object p2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->userIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .line 713
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->timestamp:J

    .line 714
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;

    .prologue
    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    iput-object p1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->keyword:Ljava/lang/String;

    .line 706
    iput-object p2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->cid:Ljava/lang/String;

    .line 707
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->timestamp:J

    .line 708
    return-void
.end method


# virtual methods
.method public isContactClickHistory()Z
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->userIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupClickHistory()Z
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->cid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
