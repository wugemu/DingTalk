.class public final Lejk;
.super Ljava/lang/Object;
.source "NavigatorTabsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lejk$a;
    }
.end annotation


# static fields
.field private static e:Lejk;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lejk$a;

.field c:Lejk$a;

.field d:Lejk$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lejk;

    invoke-direct {v0}, Lejk;-><init>()V

    sput-object v0, Lejk;->e:Lejk;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lejk;->a:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Lejk$a;

    invoke-direct {v0}, Lejk$a;-><init>()V

    iput-object v0, p0, Lejk;->b:Lejk$a;

    .line 14
    new-instance v0, Lejk$a;

    invoke-direct {v0}, Lejk$a;-><init>()V

    iput-object v0, p0, Lejk;->c:Lejk$a;

    .line 15
    new-instance v0, Lejk$a;

    invoke-direct {v0}, Lejk$a;-><init>()V

    iput-object v0, p0, Lejk;->d:Lejk$a;

    .line 24
    return-void
.end method

.method public static a()Lejk;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lejk;->e:Lejk;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    iget-object v1, p0, Lejk;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;

    .line 67
    .local v0, "tabView":Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;
    sget-object v2, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;->Converation:Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    iget-object v3, p0, Lejk;->b:Lejk$a;

    iget v3, v3, Lejk$a;->a:I

    iget-object v4, p0, Lejk;->b:Lejk$a;

    iget v4, v4, Lejk$a;->b:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->a(Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;II)V

    .line 68
    sget-object v2, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;->Ding:Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    iget-object v3, p0, Lejk;->c:Lejk$a;

    iget v3, v3, Lejk$a;->a:I

    iget-object v4, p0, Lejk;->c:Lejk$a;

    iget v4, v4, Lejk$a;->b:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->a(Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;II)V

    .line 69
    sget-object v2, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;->Contact:Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    iget-object v3, p0, Lejk;->d:Lejk$a;

    iget v3, v3, Lejk$a;->a:I

    iget-object v4, p0, Lejk;->d:Lejk$a;

    iget v4, v4, Lejk$a;->b:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->a(Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;II)V

    goto :goto_0

    .line 71
    .end local v0    # "tabView":Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;
    :cond_0
    return-void
.end method
