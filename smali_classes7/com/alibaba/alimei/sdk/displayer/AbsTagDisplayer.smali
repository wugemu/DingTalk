.class public Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;
.super Lcom/alibaba/alimei/sdk/displayer/Displayer;
.source "AbsTagDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/sdk/displayer/Displayer",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/Displayer;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected executeLoad()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public getTagColors(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onRelease()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method
