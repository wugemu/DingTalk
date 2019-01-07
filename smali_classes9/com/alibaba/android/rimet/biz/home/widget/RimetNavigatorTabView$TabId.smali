.class public final enum Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;
.super Ljava/lang/Enum;
.source "RimetNavigatorTabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

.field public static final enum Contact:Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

.field public static final enum Converation:Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

.field public static final enum Ding:Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

.field public static final enum Extra:Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    const-string/jumbo v1, "Converation"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;->Converation:Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    .line 24
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    const-string/jumbo v1, "Ding"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;->Ding:Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    .line 28
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    const-string/jumbo v1, "Contact"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;->Contact:Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    .line 32
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    const-string/jumbo v1, "Extra"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;->Extra:Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    sget-object v1, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;->Converation:Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;->Ding:Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;->Contact:Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;->Extra:Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;->$VALUES:[Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;->$VALUES:[Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    invoke-virtual {v0}, [Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;

    return-object v0
.end method
