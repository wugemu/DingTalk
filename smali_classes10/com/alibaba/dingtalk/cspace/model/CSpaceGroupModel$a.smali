.class public final Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel$a;
.super Ljava/lang/Object;
.source "CSpaceGroupModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 149
    check-cast p1, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;

    check-cast p2, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;

    .line 1153
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->getSortKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->getSortKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->getSortKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    .line 1156
    :cond_0
    const/4 v0, 0x0

    .line 149
    goto :goto_0
.end method
