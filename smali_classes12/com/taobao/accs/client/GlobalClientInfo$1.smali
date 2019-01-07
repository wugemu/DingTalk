.class public Lcom/taobao/accs/client/GlobalClientInfo$1;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "GlobalClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljim;


# direct methods
.method public constructor <init>(Ljim;)V
    .locals 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/taobao/accs/client/GlobalClientInfo$1;->this$0:Ljim;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 49
    const-string/jumbo v0, "agooSend"

    const-string/jumbo v1, "org.android.agoo.accs.AgooService"

    invoke-virtual {p0, v0, v1}, Lcom/taobao/accs/client/GlobalClientInfo$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v0, "agooAck"

    const-string/jumbo v1, "org.android.agoo.accs.AgooService"

    invoke-virtual {p0, v0, v1}, Lcom/taobao/accs/client/GlobalClientInfo$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v0, "agooTokenReport"

    const-string/jumbo v1, "org.android.agoo.accs.AgooService"

    invoke-virtual {p0, v0, v1}, Lcom/taobao/accs/client/GlobalClientInfo$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method
