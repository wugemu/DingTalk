.class public Lava;
.super Ljava/lang/Object;
.source "ItemSetting.java"

# interfaces
.implements Lauz;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Lcom/alibaba/android/calendar/setting/object/FolderType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "fillColor"    # I

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v0, p0, Lava;->e:Z

    .line 15
    iput-boolean v0, p0, Lava;->f:Z

    .line 17
    sget-object v0, Lcom/alibaba/android/calendar/setting/object/FolderType;->DING_DING:Lcom/alibaba/android/calendar/setting/object/FolderType;

    iput-object v0, p0, Lava;->g:Lcom/alibaba/android/calendar/setting/object/FolderType;

    .line 20
    iput-object p1, p0, Lava;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lava;->b:Ljava/lang/String;

    .line 22
    iput p3, p0, Lava;->c:I

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/calendar/setting/object/SettingType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/alibaba/android/calendar/setting/object/SettingType;->ITEM:Lcom/alibaba/android/calendar/setting/object/SettingType;

    return-object v0
.end method
