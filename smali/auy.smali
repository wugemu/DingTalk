.class public final Lauy;
.super Ljava/lang/Object;
.source "HeaderSetting.java"

# interfaces
.implements Lauz;


# instance fields
.field public a:Z

.field public b:Z

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Lcom/alibaba/android/calendar/setting/object/FolderType;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lava;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZJLjava/lang/String;Lcom/alibaba/android/calendar/setting/object/FolderType;Ljava/util/List;)V
    .locals 1
    .param p1, "isFolded"    # Z
    .param p2, "collapseDisable"    # Z
    .param p3, "groupId"    # J
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "folderType"    # Lcom/alibaba/android/calendar/setting/object/FolderType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZJ",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/calendar/setting/object/FolderType;",
            "Ljava/util/List",
            "<",
            "Lava;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p7, "iSettings":Ljava/util/List;, "Ljava/util/List<Lava;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lauy;->a:Z

    .line 26
    iput-boolean p2, p0, Lauy;->b:Z

    .line 27
    iput-wide p3, p0, Lauy;->c:J

    .line 28
    iput-object p5, p0, Lauy;->d:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lauy;->e:Lcom/alibaba/android/calendar/setting/object/FolderType;

    .line 30
    iput-object p7, p0, Lauy;->f:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/calendar/setting/object/SettingType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/alibaba/android/calendar/setting/object/SettingType;->HEADER:Lcom/alibaba/android/calendar/setting/object/SettingType;

    return-object v0
.end method
