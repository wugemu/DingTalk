.class public Lcom/alibaba/android/rimet/biz/object/CsConfigObject;
.super Ljava/lang/Object;
.source "CsConfigObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public data:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public topic:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public version:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lejw;)Lcom/alibaba/android/rimet/biz/object/CsConfigObject;
    .locals 4
    .param p0, "configModel"    # Lejw;

    .prologue
    .line 35
    new-instance v0, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;

    invoke-direct {v0}, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;-><init>()V

    .line 36
    .local v0, "configObject":Lcom/alibaba/android/rimet/biz/object/CsConfigObject;
    if-eqz p0, :cond_0

    .line 37
    iget-object v1, p0, Lejw;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 37
    iput-wide v2, v0, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;->version:J

    .line 38
    iget-object v1, p0, Lejw;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;->topic:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lejw;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;->data:Ljava/lang/String;

    .line 41
    :cond_0
    return-object v0
.end method

.method public static toIDLModel(Lcom/alibaba/android/rimet/biz/object/CsConfigObject;)Lejw;
    .locals 4
    .param p0, "configObject"    # Lcom/alibaba/android/rimet/biz/object/CsConfigObject;

    .prologue
    .line 45
    new-instance v0, Lejw;

    invoke-direct {v0}, Lejw;-><init>()V

    .line 46
    .local v0, "configModel":Lejw;
    if-eqz p0, :cond_0

    .line 47
    iget-wide v2, p0, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;->version:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lejw;->a:Ljava/lang/Long;

    .line 48
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;->topic:Ljava/lang/String;

    iput-object v1, v0, Lejw;->b:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;->data:Ljava/lang/String;

    iput-object v1, v0, Lejw;->c:Ljava/lang/String;

    .line 51
    :cond_0
    return-object v0
.end method
