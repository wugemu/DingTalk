.class public Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;
.super Ljava/lang/Object;
.source "ChatThemeItemObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7a5879e7c5facdd1L


# instance fields
.field public author:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "author"
    .end annotation
.end field

.field public chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chatTheme"
    .end annotation
.end field

.field public themeDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "themeDesc"
    .end annotation
.end field

.field public themeId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "themeId"
    .end annotation
.end field

.field public themeName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "themeName"
    .end annotation
.end field

.field public themeThumb:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "themeThumb"
    .end annotation
.end field

.field public themeType:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "themeType"
    .end annotation
.end field

.field public type:I

.field public version:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->type:I

    return-void
.end method

.method public static fromIdl(Ldfz;)Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;
    .locals 4
    .param p0, "model"    # Ldfz;

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    .line 61
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;-><init>()V

    .line 62
    .local v0, "object":Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;
    iget-object v1, p0, Ldfz;->a:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeId:J

    .line 63
    iget-object v1, p0, Ldfz;->b:Ljava/lang/Integer;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->version:I

    .line 64
    iget-object v1, p0, Ldfz;->c:Ljava/lang/Integer;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeType:I

    .line 65
    iget-object v1, p0, Ldfz;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeName:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Ldfz;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->author:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Ldfz;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeDesc:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Ldfz;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeThumb:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Ldfz;->d:Ldga;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->fromIdl(Ldga;)Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    goto :goto_0
.end method

.method public static fromIdl(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldfz;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Ldfz;>;"
    if-nez p0, :cond_1

    .line 75
    const/4 v0, 0x0

    .line 85
    :cond_0
    return-object v0

    .line 78
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldfz;

    .line 80
    .local v1, "model":Ldfz;
    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->fromIdl(Ldfz;)Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    move-result-object v2

    .line 81
    .local v2, "object":Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;
    if-eqz v2, :cond_2

    .line 82
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
