.class public Leqi;
.super Ljava/lang/Object;
.source "BaseSearchModel.java"


# instance fields
.field protected a:Ljava/lang/CharSequence;

.field protected b:Ljava/lang/CharSequence;

.field public c:Lcom/alibaba/android/search/model/SearchClickLogModel;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "desc"    # Ljava/lang/CharSequence;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    iput-object v0, p0, Leqi;->c:Lcom/alibaba/android/search/model/SearchClickLogModel;

    .line 15
    iput-object p1, p0, Leqi;->a:Ljava/lang/CharSequence;

    .line 16
    iput-object p2, p0, Leqi;->b:Ljava/lang/CharSequence;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Leqi;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final a(I)V
    .locals 1
    .param p1, "entry"    # I

    .prologue
    .line 40
    iget-object v0, p0, Leqi;->c:Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 41
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Leqi;->c:Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setUUID(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Leqi;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final b(I)V
    .locals 1
    .param p1, "positionValue"    # I

    .prologue
    .line 44
    iget-object v0, p0, Leqi;->c:Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionValue(I)V

    .line 45
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Leqi;->c:Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setType(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Leqi;->c:Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setValue(Ljava/lang/String;)V

    .line 53
    return-void
.end method
