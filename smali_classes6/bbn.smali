.class public final Lbbn;
.super Ljava/lang/Object;
.source "DingComparators.java"


# static fields
.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lbbn$1;

    invoke-direct {v0}, Lbbn$1;-><init>()V

    sput-object v0, Lbbn;->a:Ljava/util/Comparator;

    .line 57
    new-instance v0, Lbbn$2;

    invoke-direct {v0}, Lbbn$2;-><init>()V

    sput-object v0, Lbbn;->b:Ljava/util/Comparator;

    .line 90
    new-instance v0, Lbbn$3;

    invoke-direct {v0}, Lbbn$3;-><init>()V

    sput-object v0, Lbbn;->c:Ljava/util/Comparator;

    .line 114
    new-instance v0, Lbbn$4;

    invoke-direct {v0}, Lbbn$4;-><init>()V

    sput-object v0, Lbbn;->d:Ljava/util/Comparator;

    .line 142
    new-instance v0, Lbbn$5;

    invoke-direct {v0}, Lbbn$5;-><init>()V

    sput-object v0, Lbbn;->e:Ljava/util/Comparator;

    .line 173
    new-instance v0, Lbbn$6;

    invoke-direct {v0}, Lbbn$6;-><init>()V

    sput-object v0, Lbbn;->f:Ljava/util/Comparator;

    .line 249
    new-instance v0, Lbbn$7;

    invoke-direct {v0}, Lbbn$7;-><init>()V

    sput-object v0, Lbbn;->g:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lbbn;->g:Ljava/util/Comparator;

    return-object v0
.end method

.method public static b()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    sget-object v0, Lbbn;->g:Ljava/util/Comparator;

    return-object v0
.end method
