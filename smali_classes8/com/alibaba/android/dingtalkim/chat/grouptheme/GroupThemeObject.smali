.class public Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;
.super Ljava/lang/Object;
.source "GroupThemeObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x25516205ff2c45b3L


# instance fields
.field public backgroundLargeImageMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_background_large_image_media_id"
    .end annotation
.end field

.field public backgroundMobileImageMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_background_mobile_image_media_id"
    .end annotation
.end field

.field public backgroundWatermarkColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_background_watermark_color"
    .end annotation
.end field

.field public content:Ljava/lang/String;

.field public themeId:Ljava/lang/String;

.field public titleBackgroundColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_title_background_color"
    .end annotation
.end field

.field public titleIconColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_title_icon_color"
    .end annotation
.end field

.field public titleTextColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_title_text_color"
    .end annotation
.end field

.field public toolbarAudioBtnBackgroundColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_toolbar_audio_btn_background_color"
    .end annotation
.end field

.field public toolbarAudioBtnTextColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_toolbar_audio_btn_text_color"
    .end annotation
.end field

.field public toolbarBackgroundColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_toolbar_background_color"
    .end annotation
.end field

.field public toolbarIconColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_toolbar_icon_color"
    .end annotation
.end field

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromGroupThemeModel(Ldtr;)Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;
    .locals 3
    .param p0, "model"    # Ldtr;

    .prologue
    .line 119
    if-eqz p0, :cond_0

    iget-object v1, p0, Ldtr;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    .line 122
    :cond_1
    iget-object v1, p0, Ldtr;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->parseContent(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;

    move-result-object v0

    .line 123
    .local v0, "object":Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;
    iget-object v1, p0, Ldtr;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->themeId:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Ldtr;->b:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 124
    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->version:I

    goto :goto_0
.end method

.method public static parseContent(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;-><init>()V

    .line 115
    :goto_0
    return-object v0

    .line 110
    :cond_0
    const-class v1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;

    invoke-static {p0, v1}, Lcor;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;

    .line 111
    .local v0, "object":Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;
    if-nez v0, :cond_1

    .line 112
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;

    .end local v0    # "object":Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;
    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;-><init>()V

    .line 114
    .restart local v0    # "object":Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;
    :cond_1
    iput-object p0, v0, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->content:Ljava/lang/String;

    goto :goto_0
.end method
