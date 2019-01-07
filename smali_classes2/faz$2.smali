.class final Lfaz$2;
.super Lcmg;
.source "PhonebookAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfaz;->a(JILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfpy;",
        "Lcom/alibaba/android/user/model/PhonebookObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfaz;


# direct methods
.method constructor <init>(Lfaz;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfaz;

    .prologue
    .line 67
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/model/PhonebookObjectList;>;"
    iput-object p1, p0, Lfaz$2;->a:Lfaz;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    check-cast p1, Lfpy;

    .line 1070
    invoke-static {p1}, Lcom/alibaba/android/user/model/PhonebookObjectList;->fromIdl(Lfpy;)Lcom/alibaba/android/user/model/PhonebookObjectList;

    move-result-object v0

    .line 67
    return-object v0
.end method
