.class public final Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFilePresenter$2;
.super Ljava/util/HashMap;
.source "SpaceCreateFilePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 46
    const-string/jumbo v0, "0"

    const-string/jumbo v1, "docx"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFilePresenter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "xlsx"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFilePresenter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v0, "2"

    const-string/jumbo v1, "pptx"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFilePresenter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string/jumbo v0, "100"

    const-string/jumbo v1, "adoc"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFilePresenter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v0, "101"

    const-string/jumbo v1, "axls"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFilePresenter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method
