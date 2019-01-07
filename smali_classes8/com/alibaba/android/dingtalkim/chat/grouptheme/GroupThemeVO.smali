.class public Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;
.super Ljava/lang/Object;
.source "GroupThemeVO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1ea2b99cefc47b40L


# instance fields
.field public backgroundLargeImageMediaId:Ljava/lang/String;

.field public backgroundMobileImageMediaId:Ljava/lang/String;

.field public backgroundWatermarkColor:Ljava/lang/Integer;

.field public themeId:Ljava/lang/String;

.field public titleBackgroundColor:Ljava/lang/Integer;

.field public titleIconColor:Ljava/lang/Integer;

.field public titleTextColor:Ljava/lang/Integer;

.field public toolbarAudioBtnBackgroundColor:Ljava/lang/Integer;

.field public toolbarAudioBtnTextColor:Ljava/lang/Integer;

.field public toolbarBackgroundColor:Ljava/lang/Integer;

.field public toolbarIconColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseColorString(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "color"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 113
    :goto_0
    return-object v1

    .line 103
    :cond_0
    const/4 v0, 0x0

    .line 104
    .local v0, "result":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    const-string/jumbo v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 113
    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 107
    :cond_2
    const-string/jumbo v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    const-string/jumbo v1, "0x"

    const-string/jumbo v2, "#"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 110
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method public static parseFromObject(Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;)Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;
    .locals 6
    .param p0, "object"    # Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;

    .prologue
    const/4 v2, 0x0

    .line 74
    if-nez p0, :cond_0

    move-object v1, v2

    .line 95
    :goto_0
    return-object v1

    .line 78
    :cond_0
    :try_start_0
    new-instance v1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;-><init>()V

    .line 79
    .local v1, "vo":Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->themeId:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->themeId:Ljava/lang/String;

    .line 80
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->titleBackgroundColor:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->parseColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->titleBackgroundColor:Ljava/lang/Integer;

    .line 81
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->titleIconColor:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->parseColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->titleIconColor:Ljava/lang/Integer;

    .line 82
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->titleTextColor:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->parseColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->titleTextColor:Ljava/lang/Integer;

    .line 84
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->backgroundMobileImageMediaId:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->backgroundMobileImageMediaId:Ljava/lang/String;

    .line 85
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->backgroundLargeImageMediaId:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->backgroundLargeImageMediaId:Ljava/lang/String;

    .line 87
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->toolbarIconColor:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->parseColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->toolbarIconColor:Ljava/lang/Integer;

    .line 88
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->toolbarBackgroundColor:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->parseColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->toolbarBackgroundColor:Ljava/lang/Integer;

    .line 89
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->toolbarAudioBtnBackgroundColor:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->parseColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->toolbarAudioBtnBackgroundColor:Ljava/lang/Integer;

    .line 90
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->toolbarAudioBtnTextColor:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->parseColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->toolbarAudioBtnTextColor:Ljava/lang/Integer;

    .line 91
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->backgroundWatermarkColor:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->parseColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->backgroundWatermarkColor:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v1    # "vo":Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "GroupTheme"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parse theme err "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "im"

    invoke-static {v3, v4, v5}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 95
    goto :goto_0
.end method
