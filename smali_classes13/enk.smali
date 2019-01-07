.class public final Lenk;
.super Ljava/lang/Object;
.source "AssureModelFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;)Lcom/alibaba/android/search/assure/model/AssureModel;
    .locals 3
    .param p0, "entry"    # Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 17
    const-string/jumbo v1, "entry = null"

    invoke-static {p0, v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget v1, p0, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->type:I

    invoke-static {v1}, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->getAssureType(I)Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    move-result-object v0

    .line 20
    .local v0, "type":Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;
    sget-object v1, Lenk$1;->a:[I

    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 29
    new-instance v1, Lcom/alibaba/android/search/assure/model/UnkownAssureModel;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/assure/model/UnkownAssureModel;-><init>(Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;)V

    :goto_0
    return-object v1

    .line 22
    :pswitch_0
    new-instance v1, Lcom/alibaba/android/search/assure/model/ContactAssureModel;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/assure/model/ContactAssureModel;-><init>(Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;)V

    goto :goto_0

    .line 24
    :pswitch_1
    new-instance v1, Lcom/alibaba/android/search/assure/model/GroupAssureModel;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/assure/model/GroupAssureModel;-><init>(Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;)V

    goto :goto_0

    .line 26
    :pswitch_2
    new-instance v1, Lcom/alibaba/android/search/assure/model/FunctionAssureModel;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/assure/model/FunctionAssureModel;-><init>(Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;)V

    goto :goto_0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
