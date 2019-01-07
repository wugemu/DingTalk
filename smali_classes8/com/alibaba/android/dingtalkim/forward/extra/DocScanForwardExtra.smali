.class public Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;
.super Ljava/lang/Object;
.source "DocScanForwardExtra.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mDocImagePath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDocPdfPath:Ljava/lang/String;

.field private mType:Lcom/alibaba/dingtalk/doclens/DocFileType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDocImagePath()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;->mDocImagePath:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDocPdfPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;->mDocPdfPath:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/alibaba/dingtalk/doclens/DocFileType;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;->mType:Lcom/alibaba/dingtalk/doclens/DocFileType;

    return-object v0
.end method

.method public setDocImagePath(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "docImagePath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;->mDocImagePath:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method public setDocPdfPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "docPdfPath"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;->mDocPdfPath:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setType(Lcom/alibaba/dingtalk/doclens/DocFileType;)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/dingtalk/doclens/DocFileType;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;->mType:Lcom/alibaba/dingtalk/doclens/DocFileType;

    .line 30
    return-void
.end method
