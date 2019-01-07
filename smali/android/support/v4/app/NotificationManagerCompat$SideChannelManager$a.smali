.class final Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/ComponentName;

.field public b:Z

.field public c:Lcu;

.field public d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/support/v4/app/NotificationManagerCompat$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iput-boolean v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->b:Z

    .line 559
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->d:Ljava/util/LinkedList;

    .line 561
    iput v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->e:I

    .line 564
    iput-object p1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->a:Landroid/content/ComponentName;

    .line 565
    return-void
.end method
