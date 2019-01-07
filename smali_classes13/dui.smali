.class public final Ldui;
.super Ljava/lang/Object;
.source "RecordListModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public a:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recordList"
    .end annotation

    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldul;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ldul;)Ldui;
    .locals 3
    .param p0, "recordModel"    # Ldul;

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 39
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .local v1, "recordList":Ljava/util/List;, "Ljava/util/List<Ldul;>;"
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v0, Ldui;

    invoke-direct {v0}, Ldui;-><init>()V

    .line 42
    .local v0, "listModel":Ldui;
    iput-object v1, v0, Ldui;->a:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 25
    packed-switch p1, :pswitch_data_0

    .line 32
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 27
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Ldui;->a:Ljava/util/List;

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
