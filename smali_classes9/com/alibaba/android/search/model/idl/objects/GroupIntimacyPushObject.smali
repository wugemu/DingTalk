.class public Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
.super Lcom/alibaba/android/search/model/idl/objects/BaseIntimacyPushObject;
.source "GroupIntimacyPushObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5a82f8b6ac9fda50L


# instance fields
.field public cid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/android/search/model/idl/objects/BaseIntimacyPushObject;-><init>()V

    return-void
.end method

.method public static fromCid(Ljava/lang/String;I)Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    .locals 4
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "score"    # I

    .prologue
    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;-><init>()V

    .line 56
    .local v0, "groupIntimacyPushObject":Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_1
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->score:D

    .line 57
    invoke-static {}, Liaf;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->modifidTime:J

    .line 58
    iput-object p0, v0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->cid:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_1
    int-to-double v2, p1

    goto :goto_1
.end method

.method public static fromIdl(Leom;)Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    .locals 4
    .param p0, "model"    # Leom;

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;-><init>()V

    .line 26
    .local v0, "object":Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    iget-object v1, p0, Leom;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->cid:Ljava/lang/String;

    .line 27
    iget-object v1, p0, Leom;->b:Ljava/lang/Double;

    .line 1066
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Double;D)D

    move-result-wide v2

    .line 27
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->score:D

    .line 28
    iget-object v1, p0, Leom;->c:Ljava/lang/Long;

    .line 2044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 28
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->modifidTime:J

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 34
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->cid:Ljava/lang/String;

    check-cast p1, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->cid:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 37
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->cid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 44
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->cid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
