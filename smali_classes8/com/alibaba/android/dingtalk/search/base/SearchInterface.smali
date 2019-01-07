.class public abstract Lcom/alibaba/android/dingtalk/search/base/SearchInterface;
.super Lckb;
.source "SearchInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/search/base/SearchInterface$c;,
        Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;,
        Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;,
        Lcom/alibaba/android/dingtalk/search/base/SearchInterface$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lckb;-><init>()V

    .line 403
    return-void
.end method

.method public static a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    return-object v0
.end method


# virtual methods
.method public a(JLcbz;)Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "listener"    # Lcbz;

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcbz;)Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    .locals 1
    .param p1, "listener"    # Lcbz;

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;Z)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isGroupChat"    # Z

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;
    .locals 2
    .param p1, "hasRedString"    # Ljava/lang/CharSequence;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 289
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b$a;)Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 400
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcco;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IILjava/lang/String;JLcma;)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p6, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;>;"
    return-void
.end method

.method public a(IILjava/lang/String;Lcca;)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "searchTaskListener"    # Lcca;

    .prologue
    .line 225
    return-void
.end method

.method public a(IILjava/lang/String;Lcma;)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;>;"
    return-void
.end method

.method public a(IILjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Lcca;)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "ownerId"    # Ljava/lang/Long;
    .param p5, "tag"    # Ljava/lang/Integer;
    .param p6, "searchTaskListener"    # Lcca;

    .prologue
    .line 228
    return-void
.end method

.method public a(JLcma;)V
    .locals 0
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p3, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 144
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    .param p4, "chooseMode"    # I

    .prologue
    .line 142
    return-void
.end method

.method public a(Lccn;Lcma;)V
    .locals 0
    .param p1, "paramsModel"    # Lccn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccn;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p2, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;>;"
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 0
    .param p1, "userProfileExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    .line 216
    return-void
.end method

.method public a(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 0
    .param p1, "dimensionValueSet"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p2, "measureValueSet"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .prologue
    .line 212
    return-void
.end method

.method public a(Ljava/lang/String;JILcma;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p5, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/String;>;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lccm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p3, "apiEventListener":Lcma;, "Lcma<Lccm;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/content/Context;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public b(IILjava/lang/String;Lcca;)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "searchTaskListener"    # Lcca;

    .prologue
    .line 226
    return-void
.end method

.method public b(IILjava/lang/String;Lcma;)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;>;"
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 195
    return-void
.end method

.method public b(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 0
    .param p1, "dimensionValueSet"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p2, "measureValueSet"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .prologue
    .line 214
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonConfig"    # Ljava/lang/String;

    .prologue
    .line 222
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lccm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p3, "apiEventListener":Lcma;, "Lcma<Lccm;>;"
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public c(IILjava/lang/String;Lcca;)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "searchTaskListener"    # Lcca;

    .prologue
    .line 227
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lccm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p3, "apiEventListener":Lcma;, "Lcma<Lccm;>;"
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 0
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    .line 193
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionResultObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p3, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionResultObject;>;"
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public f(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    return-void
.end method

.method public g()Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public l()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public m()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public n()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public o()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public p()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public q()Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public v()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    return v0
.end method
