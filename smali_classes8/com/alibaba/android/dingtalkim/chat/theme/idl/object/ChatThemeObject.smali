.class public Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;
.super Ljava/lang/Object;
.source "ChatThemeObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x11a35d188b1289a0L


# instance fields
.field public atReadColor:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "atReadColor"
    .end annotation
.end field

.field public backgroundLargeMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backgroundLargeMediaId"
    .end annotation
.end field

.field public backgroundMobileMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backgroundMobileMediaId"
    .end annotation
.end field

.field public nickColor:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nickColor"
    .end annotation
.end field

.field public statusColor:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statusColor"
    .end annotation
.end field

.field public systemMsgBackgroundColor:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "systemMsgBackgroundColor"
    .end annotation
.end field

.field public systemMsgColor:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "systemMsgColor"
    .end annotation
.end field

.field public titleBackgroundColor:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "titleBackgroundColor"
    .end annotation
.end field

.field public titleIconColor:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "titleIconColor"
    .end annotation
.end field

.field public titleTextColor:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "titleTextColor"
    .end annotation
.end field

.field public toolbarAudioBtnBackgroundColor:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "toolbarAudioBtnBackgroundColor"
    .end annotation
.end field

.field public toolbarAudioBtnTextColor:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "toolbarAudioBtnTextColor"
    .end annotation
.end field

.field public toolbarBackgroundColor:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "toolbarBackgroundColor"
    .end annotation
.end field

.field public toolbarIconColor:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "toolbarIconColor"
    .end annotation
.end field

.field public waterMarkColor:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "waterMarkColor"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Ldga;)Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;
    .locals 2
    .param p0, "model"    # Ldga;

    .prologue
    .line 83
    if-nez p0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    .line 87
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;-><init>()V

    .line 88
    .local v0, "object":Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;
    iget-object v1, p0, Ldga;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->backgroundMobileMediaId:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Ldga;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->backgroundLargeMediaId:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Ldga;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->parseColorString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->nickColor:I

    .line 91
    iget-object v1, p0, Ldga;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->parseColorString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->statusColor:I

    .line 92
    iget-object v1, p0, Ldga;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->parseColorString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->atReadColor:I

    .line 93
    iget-object v1, p0, Ldga;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->parseColorString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->systemMsgBackgroundColor:I

    .line 94
    iget-object v1, p0, Ldga;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->parseColorString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->systemMsgColor:I

    .line 95
    iget-object v1, p0, Ldga;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->parseColorString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->waterMarkColor:I

    .line 96
    iget-object v1, p0, Ldga;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->parseColorString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->titleBackgroundColor:I

    .line 97
    iget-object v1, p0, Ldga;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->parseColorString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->titleIconColor:I

    .line 98
    iget-object v1, p0, Ldga;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->parseColorString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->titleTextColor:I

    .line 99
    iget-object v1, p0, Ldga;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->parseColorString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->toolbarIconColor:I

    .line 100
    iget-object v1, p0, Ldga;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->parseColorString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->toolbarBackgroundColor:I

    .line 101
    iget-object v1, p0, Ldga;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->parseColorString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->toolbarAudioBtnBackgroundColor:I

    .line 102
    iget-object v1, p0, Ldga;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->parseColorString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->toolbarAudioBtnTextColor:I

    goto :goto_0
.end method

.method private static parseColorString(Ljava/lang/String;)I
    .locals 7
    .param p0, "color"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 126
    :cond_0
    :goto_0
    return v1

    .line 110
    :cond_1
    const/4 v1, 0x0

    .line 112
    .local v1, "result":I
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    const-string/jumbo v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 115
    :cond_2
    const-string/jumbo v3, "0x"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    const-string/jumbo v3, "0x"

    const-string/jumbo v4, "#"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 118
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "im"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "ChatThemeObject.parseColorString failed, error="

    aput-object v6, v5, v2

    const/4 v2, 0x1

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 122
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
