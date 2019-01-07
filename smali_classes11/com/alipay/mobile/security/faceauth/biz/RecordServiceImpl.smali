.class public Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;
.super Ljava/lang/Object;
.source "RecordServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/security/faceauth/model/RecordService;


# instance fields
.field protected a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/mobile/security/faceauth/model/MetaRecord;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;-><init>(Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;->a:Ljava/util/Hashtable;

    .line 211
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;->b:Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;->c:Ljava/util/Map;

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x461c4000    # 10000.0f

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/SignHelper;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;->b:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
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
    .line 219
    .local p1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;-><init>(Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;->a:Ljava/util/Hashtable;

    .line 211
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;->b:Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;->c:Ljava/util/Map;

    .line 220
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;->c:Ljava/util/Map;

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x461c4000    # 10000.0f

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/SignHelper;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;->b:Ljava/lang/String;

    .line 222
    return-void
.end method


# virtual methods
.method public getUniqueID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setExtProperty(Ljava/util/Map;)V
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
    .line 255
    .local p1, "param3":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;->c:Ljava/util/Map;

    .line 256
    return-void
.end method

.method public setUniqueID(Ljava/lang/String;)V
    .locals 0
    .param p1, "uniqueID"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;->b:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public write(I)V
    .locals 0
    .param p1, "actionCode"    # I

    .prologue
    .line 227
    return-void
.end method

.method public write(ILjava/lang/String;)V
    .locals 0
    .param p1, "actionCode"    # I
    .param p2, "other"    # Ljava/lang/String;

    .prologue
    .line 234
    return-void
.end method

.method public write(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "actionCode"    # I
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;->write(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 244
    return-void
.end method

.method public write(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "actionCode"    # I
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p4, "param3":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method
