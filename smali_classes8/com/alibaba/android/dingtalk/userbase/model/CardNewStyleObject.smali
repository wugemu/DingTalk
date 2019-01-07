.class public Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;
.super Ljava/lang/Object;
.source "CardNewStyleObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x27557af0d5fb0b40L


# instance fields
.field public bgColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public bgMaskColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public bgMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public btnBlockColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public btnEURL:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public iconMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nameBlockColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgThemeId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public qrColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public telBlockColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public titleBlockColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultObject()Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;

    const-string/jumbo v2, "white"

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;-><init>()V

    .line 60
    .local v1, "styleObject":Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->orgThemeId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->orgThemeId:Ljava/lang/String;

    .line 61
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->bgColor:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->bgColor:Ljava/lang/String;

    .line 62
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->nameBlockColor:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->nameBlockColor:Ljava/lang/String;

    .line 63
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->titleBlockColor:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->titleBlockColor:Ljava/lang/String;

    .line 64
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->btnBlockColor:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->btnBlockColor:Ljava/lang/String;

    .line 65
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->telBlockColor:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->telBlockColor:Ljava/lang/String;

    .line 66
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->qrColor:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->qrColor:Ljava/lang/String;

    .line 68
    return-object v1
.end method

.method public static getObject(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->getDefaultObject()Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;

    move-result-object v0

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 75
    :cond_1
    const-class v1, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;

    invoke-static {p0, v1}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;

    .line 76
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;
    if-nez v0, :cond_2

    .line 77
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->getDefaultObject()Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_2
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->orgThemeId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    const-string/jumbo v1, "white"

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->orgThemeId:Ljava/lang/String;

    .line 82
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->bgColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->orgThemeId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->getDefaultColor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->bgColor:Ljava/lang/String;

    .line 85
    :cond_4
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->nameBlockColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 86
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->orgThemeId:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->getDefaultColor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->nameBlockColor:Ljava/lang/String;

    .line 88
    :cond_5
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->titleBlockColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 89
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->orgThemeId:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->getDefaultColor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->titleBlockColor:Ljava/lang/String;

    .line 91
    :cond_6
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->telBlockColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 92
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->orgThemeId:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->getDefaultColor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->telBlockColor:Ljava/lang/String;

    .line 94
    :cond_7
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->btnBlockColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 95
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->orgThemeId:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->getDefaultColor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->btnBlockColor:Ljava/lang/String;

    .line 97
    :cond_8
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->qrColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->orgThemeId:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->getDefaultColor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->qrColor:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static getObjects(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "jsons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    const/4 v0, 0x0

    .line 114
    :cond_0
    return-object v0

    .line 108
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 111
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->getObject(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static toJsonString(Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;

    .prologue
    .line 122
    invoke-static {p0}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJsonString(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;>;"
    invoke-static {p0}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    const/4 v1, 0x0

    .line 135
    :cond_0
    return-object v1

    .line 129
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v1, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;

    .line 131
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;
    if-eqz v0, :cond_2

    .line 132
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->toJsonString(Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public toJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    invoke-static {p0}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
