.class public Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
.super Ljava/lang/Object;
.source "UTPageHitHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/UTPageHitHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTPageEventObject"
.end annotation


# instance fields
.field private mCacheKey:Ljava/lang/String;

.field private mIsH5Called:Z

.field private mIsPageAppearCalled:Z

.field private mIsSkipPage:Z

.field private mNextPageProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPageAppearTimestamp:J

.field private mPageName:Ljava/lang/String;

.field private mPageProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPageStatus:Lcom/ut/mini/UTPageStatus;

.field private mPageStatusCode:I

.field private mPageStayTimstamp:J

.field private mPageUrl:Landroid/net/Uri;

.field private mRefPage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageProperties:Ljava/util/Map;

    .line 224
    iput-wide v4, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageAppearTimestamp:J

    .line 225
    iput-wide v4, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStayTimstamp:J

    .line 226
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageUrl:Landroid/net/Uri;

    .line 227
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageName:Ljava/lang/String;

    .line 228
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mRefPage:Ljava/lang/String;

    .line 229
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatus:Lcom/ut/mini/UTPageStatus;

    .line 230
    iput-boolean v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsPageAppearCalled:Z

    .line 231
    iput-boolean v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsSkipPage:Z

    .line 232
    iput-boolean v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsH5Called:Z

    .line 233
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mCacheKey:Ljava/lang/String;

    .line 234
    iput v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatusCode:I

    .line 235
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mNextPageProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getNextPageProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mNextPageProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getPageAppearTimestamp()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 310
    iget-wide v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageAppearTimestamp:J

    return-wide v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getPageStatus()Lcom/ut/mini/UTPageStatus;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatus:Lcom/ut/mini/UTPageStatus;

    return-object v0
.end method

.method public getPageStatusCode()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatusCode:I

    return v0
.end method

.method public getPageStayTimstamp()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 318
    iget-wide v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStayTimstamp:J

    return-wide v0
.end method

.method public getPageUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getRefPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mRefPage:Ljava/lang/String;

    return-object v0
.end method

.method public isH5Called()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsH5Called:Z

    return v0
.end method

.method public isPageAppearCalled()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsPageAppearCalled:Z

    return v0
.end method

.method public isSkipPage()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsSkipPage:Z

    return v0
.end method

.method public resetPropertiesWithoutSkipFlagAndH5Flag()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageProperties:Ljava/util/Map;

    .line 255
    iput-wide v4, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageAppearTimestamp:J

    .line 256
    iput-wide v4, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStayTimstamp:J

    .line 257
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageUrl:Landroid/net/Uri;

    .line 258
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageName:Ljava/lang/String;

    .line 259
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mRefPage:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatus:Lcom/ut/mini/UTPageStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatus:Lcom/ut/mini/UTPageStatus;

    sget-object v1, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    if-eq v0, v1, :cond_1

    .line 261
    :cond_0
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatus:Lcom/ut/mini/UTPageStatus;

    .line 263
    :cond_1
    iput-boolean v3, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsPageAppearCalled:Z

    .line 264
    iput-boolean v3, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsH5Called:Z

    .line 265
    iput v3, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatusCode:I

    .line 266
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mNextPageProperties:Ljava/util/Map;

    .line 267
    return-void
.end method

.method public setCacheKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "aCacheKey"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mCacheKey:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setH5Called()V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsH5Called:Z

    .line 275
    return-void
.end method

.method public setNextPageProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "aNextPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mNextPageProperties:Ljava/util/Map;

    .line 239
    return-void
.end method

.method public setPageAppearCalled()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsPageAppearCalled:Z

    .line 287
    return-void
.end method

.method public setPageAppearTimestamp(J)V
    .locals 1
    .param p1, "aPageAppearTimestamp"    # J

    .prologue
    .line 314
    iput-wide p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageAppearTimestamp:J

    .line 315
    return-void
.end method

.method public setPageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "aPageName"    # Ljava/lang/String;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageName:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setPageProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p1, "aPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageProperties:Ljava/util/Map;

    .line 307
    return-void
.end method

.method public setPageStatus(Lcom/ut/mini/UTPageStatus;)V
    .locals 0
    .param p1, "aPageStatus"    # Lcom/ut/mini/UTPageStatus;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatus:Lcom/ut/mini/UTPageStatus;

    .line 295
    return-void
.end method

.method public setPageStatusCode(I)V
    .locals 0
    .param p1, "aPageStatusCode"    # I

    .prologue
    .line 350
    iput p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatusCode:I

    .line 351
    return-void
.end method

.method public setPageStayTimstamp(J)V
    .locals 1
    .param p1, "aPageStayTimstamp"    # J

    .prologue
    .line 322
    iput-wide p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStayTimstamp:J

    .line 323
    return-void
.end method

.method public setPageUrl(Landroid/net/Uri;)V
    .locals 0
    .param p1, "aPageUrl"    # Landroid/net/Uri;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageUrl:Landroid/net/Uri;

    .line 331
    return-void
.end method

.method public setRefPage(Ljava/lang/String;)V
    .locals 0
    .param p1, "aRefPage"    # Ljava/lang/String;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mRefPage:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setToSkipPage()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsSkipPage:Z

    .line 279
    return-void
.end method
