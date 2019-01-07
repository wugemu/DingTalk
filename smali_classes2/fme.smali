.class public final Lfme;
.super Ljava/lang/Object;
.source "CustomerFollowerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:I

.field b:Landroid/app/Activity;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "mActivity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfme;->c:Ljava/util/List;

    .line 55
    iput-object p1, p0, Lfme;->b:Landroid/app/Activity;

    .line 56
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;IJZILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lfia;)V
    .locals 12
    .param p1, "mNode"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p2, "keyWord"    # Ljava/lang/String;
    .param p3, "keyType"    # I
    .param p4, "orgId"    # J
    .param p6, "getMore"    # Z
    .param p7, "size"    # I
    .param p8, "filter"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .param p9, "finishListener"    # Lfia;

    .prologue
    .line 159
    new-instance v9, Lfme$2;

    move/from16 v0, p6

    move-object/from16 v1, p9

    invoke-direct {v9, p0, v0, p1, v1}, Lfme$2;-><init>(Lfme;ZLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Lfia;)V

    .line 201
    .local v9, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget v3, p0, Lfme;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v3, p2

    move-object/from16 v8, p8

    invoke-interface/range {v2 .. v9}, Lezt;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcma;)V

    .line 202
    return-void
.end method
