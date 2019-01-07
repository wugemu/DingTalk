.class public final Leod;
.super Ljava/lang/Object;
.source "NegativeSampleModel.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lcom/alibaba/android/search/model/BaseModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/search/model/BaseModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "model"    # Lcom/alibaba/android/search/model/BaseModel;
    .param p3, "uuid"    # Ljava/lang/String;
    .param p4, "tab"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Leod;->i:Lcom/alibaba/android/search/model/BaseModel;

    .line 28
    iput-object p3, p0, Leod;->a:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Leod;->h:Ljava/lang/String;

    .line 31
    invoke-virtual {p2}, Lcom/alibaba/android/search/model/BaseModel;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leod;->d:Ljava/lang/String;

    .line 32
    invoke-virtual {p2}, Lcom/alibaba/android/search/model/BaseModel;->getLogSearchType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leod;->b:Ljava/lang/String;

    .line 33
    invoke-virtual {p2}, Lcom/alibaba/android/search/model/BaseModel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leod;->e:Ljava/lang/String;

    .line 34
    invoke-virtual {p2, p1}, Lcom/alibaba/android/search/model/BaseModel;->getDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leod;->f:Ljava/lang/String;

    .line 35
    invoke-virtual {p2, p1}, Lcom/alibaba/android/search/model/BaseModel;->getDesc2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leod;->g:Ljava/lang/String;

    .line 36
    invoke-virtual {p2}, Lcom/alibaba/android/search/model/BaseModel;->getListPosition()I

    move-result v0

    iput v0, p0, Leod;->c:I

    .line 37
    return-void
.end method
