.class Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$AssureComparator;
.super Ljava/lang/Object;
.source "AssureKeyWordPresenter.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AssureComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/search/assure/model/AssureModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$AssureComparator;->this$0:Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;
    .param p2, "x1"    # Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$1;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$AssureComparator;-><init>(Lcom/alibaba/android/search/assure/AssureKeyWordPresenter;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/alibaba/android/search/assure/model/AssureModel;Lcom/alibaba/android/search/assure/model/AssureModel;)I
    .locals 1
    .param p1, "o1"    # Lcom/alibaba/android/search/assure/model/AssureModel;
    .param p2, "o2"    # Lcom/alibaba/android/search/assure/model/AssureModel;

    .prologue
    .line 179
    invoke-virtual {p1, p2}, Lcom/alibaba/android/search/assure/model/AssureModel;->compareTo(Lcom/alibaba/android/search/assure/model/AssureModel;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 176
    check-cast p1, Lcom/alibaba/android/search/assure/model/AssureModel;

    check-cast p2, Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/search/assure/AssureKeyWordPresenter$AssureComparator;->compare(Lcom/alibaba/android/search/assure/model/AssureModel;Lcom/alibaba/android/search/assure/model/AssureModel;)I

    move-result v0

    return v0
.end method
