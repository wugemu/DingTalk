.class public Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;
.super Ljava/lang/Object;
.source "DtActionSheetItemBuilder.java"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Lecm;

.field public h:Z

.field public i:Z

.field public j:Z

.field private k:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->d:Z

    .line 23
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->f:Z

    .line 25
    new-instance v0, Lecn;

    invoke-direct {v0}, Lecn;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->g:Lecm;

    .line 27
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->h:Z

    .line 28
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->i:Z

    .line 31
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->j:Z

    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->k:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;
    .locals 1
    .param p1, "iconFontRes"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->k:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->e:Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->f:Z

    .line 75
    :cond_0
    return-object p0
.end method

.method public final b(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;
    .locals 1
    .param p1, "textRes"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->k:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1051
    if-eqz v0, :cond_0

    .line 1052
    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->b:Ljava/lang/String;

    .line 100
    :cond_0
    return-object p0
.end method

.method public final c(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;
    .locals 1
    .param p1, "textRes"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->k:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1060
    if-eqz v0, :cond_0

    .line 1061
    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->c:Ljava/lang/String;

    .line 1062
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->d:Z

    .line 113
    :cond_0
    return-object p0
.end method
