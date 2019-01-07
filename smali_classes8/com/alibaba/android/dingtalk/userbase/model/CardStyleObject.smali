.class public Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;
.super Ljava/lang/Object;
.source "CardStyleObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final THEME_ATTR_BG:Ljava/lang/String; = "bgColor"

.field private static final THEME_ATTR_BTN_BLOCK:Ljava/lang/String; = "btnBlockColor"

.field private static final THEME_ATTR_NAME_BLOCK:Ljava/lang/String; = "nameBlockColor"

.field private static final THEME_ATTR_QR:Ljava/lang/String; = "qrColor"

.field private static final THEME_ATTR_TEL_BLOCK:Ljava/lang/String; = "telBlockColor"

.field private static final THEME_ATTR_TITLE_BLOCK:Ljava/lang/String; = "titleBlockColor"

.field public static final THEME_BLACK:Ljava/lang/String; = "black"

.field public static final THEME_WHITE:Ljava/lang/String; = "white"

.field public static final TYPE_BG:I = 0x1

.field public static final TYPE_BTN:I = 0x5

.field public static final TYPE_NAME:I = 0x2

.field public static final TYPE_QR:I = 0x6

.field public static final TYPE_TEL:I = 0x4

.field public static final TYPE_TITLE:I = 0x3

.field private static final serialVersionUID:J = 0x67d4294959daebaL


# instance fields
.field public bgColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public btnBlockColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public canChange:Z
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

.field public theme:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public themeConfig:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

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

.field public titleBlockColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "white"

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;-><init>(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "theme"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->theme:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->orgThemeId:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->themeConfig:Ljava/util/Map;

    .line 78
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->getDefaultColor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->bgColor:Ljava/lang/String;

    .line 79
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->getDefaultColor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->nameBlockColor:Ljava/lang/String;

    .line 80
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->getDefaultColor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->titleBlockColor:Ljava/lang/String;

    .line 81
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->getDefaultColor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->telBlockColor:Ljava/lang/String;

    .line 82
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->getDefaultColor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->btnBlockColor:Ljava/lang/String;

    .line 83
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->getDefaultColor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->qrColor:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public static fromIdl(Lchd;)Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;
    .locals 4
    .param p0, "model"    # Lchd;

    .prologue
    .line 87
    if-nez p0, :cond_1

    .line 88
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;

    const-string/jumbo v2, "white"

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;-><init>(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-object v1

    .line 90
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;

    iget-object v2, p0, Lchd;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;
    iget-object v2, p0, Lchd;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->theme:Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lchd;->b:Ljava/util/Map;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->themeConfig:Ljava/util/Map;

    .line 93
    iget-object v2, p0, Lchd;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->orgThemeId:Ljava/lang/String;

    .line 94
    iget-object v2, p0, Lchd;->d:Ljava/lang/Boolean;

    .line 1022
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 94
    iput-boolean v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->canChange:Z

    .line 95
    iget-object v0, p0, Lchd;->b:Ljava/util/Map;

    .line 96
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 97
    const-string/jumbo v2, "bgColor"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 98
    const-string/jumbo v2, "bgColor"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->bgColor:Ljava/lang/String;

    .line 100
    :cond_2
    const-string/jumbo v2, "nameBlockColor"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 101
    const-string/jumbo v2, "nameBlockColor"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->nameBlockColor:Ljava/lang/String;

    .line 103
    :cond_3
    const-string/jumbo v2, "titleBlockColor"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 104
    const-string/jumbo v2, "titleBlockColor"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->titleBlockColor:Ljava/lang/String;

    .line 106
    :cond_4
    const-string/jumbo v2, "telBlockColor"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 107
    const-string/jumbo v2, "telBlockColor"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->telBlockColor:Ljava/lang/String;

    .line 109
    :cond_5
    const-string/jumbo v2, "btnBlockColor"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 110
    const-string/jumbo v2, "btnBlockColor"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->btnBlockColor:Ljava/lang/String;

    .line 112
    :cond_6
    const-string/jumbo v2, "qrColor"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    const-string/jumbo v2, "qrColor"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->qrColor:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static getDefaultColor(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "theme"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "color":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 176
    :cond_0
    :goto_0
    return-object v0

    .line 132
    :pswitch_0
    const-string/jumbo v1, "white"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    const-string/jumbo v0, "#FFFFFFFF"

    goto :goto_0

    .line 134
    :cond_1
    const-string/jumbo v1, "black"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const-string/jumbo v0, "#FF363636"

    goto :goto_0

    .line 139
    :pswitch_1
    const-string/jumbo v1, "white"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    const-string/jumbo v0, "#FF191F25"

    goto :goto_0

    .line 141
    :cond_2
    const-string/jumbo v1, "black"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const-string/jumbo v0, "#FFFFFFFF"

    goto :goto_0

    .line 146
    :pswitch_2
    const-string/jumbo v1, "white"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    const-string/jumbo v0, "#8F191F25"

    goto :goto_0

    .line 148
    :cond_3
    const-string/jumbo v1, "black"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const-string/jumbo v0, "#FFFFFFFF"

    goto :goto_0

    .line 153
    :pswitch_3
    const-string/jumbo v1, "white"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 154
    const-string/jumbo v0, "#8F191F25"

    goto :goto_0

    .line 155
    :cond_4
    const-string/jumbo v1, "black"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const-string/jumbo v0, "#B8FFFFFF"

    goto :goto_0

    .line 160
    :pswitch_4
    const-string/jumbo v1, "white"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 161
    const-string/jumbo v0, "#8F191F25"

    goto/16 :goto_0

    .line 162
    :cond_5
    const-string/jumbo v1, "black"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const-string/jumbo v0, "#FFFFFFFF"

    goto/16 :goto_0

    .line 167
    :pswitch_5
    const-string/jumbo v1, "white"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 168
    const-string/jumbo v0, "#47191F25"

    goto/16 :goto_0

    .line 169
    :cond_6
    const-string/jumbo v1, "black"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string/jumbo v0, "#66FFFFFF"

    goto/16 :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public toIdl()Lchd;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 120
    new-instance v0, Lchd;

    invoke-direct {v0}, Lchd;-><init>()V

    .line 121
    .local v0, "model":Lchd;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->theme:Ljava/lang/String;

    iput-object v1, v0, Lchd;->a:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->themeConfig:Ljava/util/Map;

    iput-object v1, v0, Lchd;->b:Ljava/util/Map;

    .line 123
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->orgThemeId:Ljava/lang/String;

    iput-object v1, v0, Lchd;->c:Ljava/lang/String;

    .line 124
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->canChange:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lchd;->d:Ljava/lang/Boolean;

    .line 125
    return-object v0
.end method
