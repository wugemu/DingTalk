.class final Lart$1;
.super Ljava/lang/Object;
.source "CalendarDiurnalCreateEvent.java"

# interfaces
.implements Laxn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lart;->getDayEventDelegate()Laxn$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lart;


# direct methods
.method constructor <init>(Lart;)V
    .locals 0
    .param p1, "this$0"    # Lart;

    .prologue
    .line 140
    iput-object p1, p0, Lart$1;->a:Lart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 147
    return-void
.end method

.method public final a(Landroid/app/Activity;JJLcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "startTimeMillis"    # J
    .param p4, "endTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "JJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p6, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    return-void
.end method
